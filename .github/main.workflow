workflow "New workflow" {
  on = "page_build"
  resolves = ["GitHub Action for Slack"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@e820f544affdbb77c1dee6d3f752f7f2daf4a0b3"
  secrets = ["SLACK_WEBHOOK"]
  args = "The GitHub Page has been built by {{ EVENT_PAYLOAD.build.pusher.login }}"
}
