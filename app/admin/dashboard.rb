ActiveAdmin.register_page "Dashboard" do


  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  #content :title => proc{ I18n.t("active_admin.dashboard") } do
=begin
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
=end

  content do
    panel 'Last posts 10' do
      table_for Post.order('updated_at').limit(10) do
        column :id
        column :title
        column :updated_at
      end
    end
  end

  sidebar 'Last 10 comments' do
      table_for PostComment.order('created_at desc').limit(10) do
        column :id
        column :text
        column :created_at
      end
  end



  # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  #end# content
end
