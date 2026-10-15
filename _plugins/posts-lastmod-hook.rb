#!/usr/bin/env ruby
#
# Check for changed posts

require 'open3'

Jekyll::Hooks.register :posts, :post_init do |post|
  # A freshly initialized blog may not have its first commit yet.
  commit_num, status = Open3.capture2(
    'git', 'rev-list', '--count', 'HEAD', '--', post.path, err: File::NULL
  )

  if status.success? && commit_num.to_i > 1
    lastmod_date, log_status = Open3.capture2(
      'git', 'log', '-1', '--pretty=%ad', '--date=iso', '--', post.path
    )
    post.data['last_modified_at'] = lastmod_date.strip if log_status.success?
  end
end
