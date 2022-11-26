module ApplicationHelper

def current_admin
    SuparAdmin.find_by_id(session[:admin_id])
end
end
