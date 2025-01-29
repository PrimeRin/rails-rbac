# Seed data for roles
admin_role = Role.create!(name: 'Admin')
editor_role = Role.create!(name: 'Editor')
viewer_role = Role.create!(name: 'Viewer')

# Seed data for resources
resource_1 = Resource.create!(name: 'Dashboard')
resource_2 = Resource.create!(name: 'Settings')
resource_3 = Resource.create!(name: 'Reports')

# Seed data for permissions
Permission.create!(role: admin_role, resource: resource_1, name: 'view', value: true)
Permission.create!(role: admin_role, resource: resource_1, name: 'edit', value: true)
Permission.create!(role: admin_role, resource: resource_1, name: 'delete', value: true)
Permission.create!(role: admin_role, resource: resource_2, name: 'view', value: true)
Permission.create!(role: admin_role, resource: resource_2, name: 'edit', value: true)
Permission.create!(role: admin_role, resource: resource_2, name: 'delete', value: true)
Permission.create!(role: admin_role, resource: resource_3, name: 'view', value: true)
Permission.create!(role: admin_role, resource: resource_3, name: 'edit', value: true)
Permission.create!(role: admin_role, resource: resource_3, name: 'delete', value: true)

Permission.create!(role: editor_role, resource: resource_1, name: 'view', value: true)
Permission.create!(role: editor_role, resource: resource_1, name: 'edit', value: true)
Permission.create!(role: editor_role, resource: resource_1, name: 'delete', value: false)
Permission.create!(role: editor_role, resource: resource_2, name: 'view', value: true)
Permission.create!(role: editor_role, resource: resource_2, name: 'edit', value: true)
Permission.create!(role: editor_role, resource: resource_2, name: 'delete', value: false)
Permission.create!(role: editor_role, resource: resource_3, name: 'view', value: true)
Permission.create!(role: editor_role, resource: resource_3, name: 'edit', value: true)
Permission.create!(role: editor_role, resource: resource_3, name: 'delete', value: false)

Permission.create!(role: viewer_role, resource: resource_1, name: 'view', value: true)
Permission.create!(role: viewer_role, resource: resource_1, name: 'edit', value: false)
Permission.create!(role: viewer_role, resource: resource_1, name: 'delete', value: false)
Permission.create!(role: viewer_role, resource: resource_2, name: 'view', value: true)
Permission.create!(role: viewer_role, resource: resource_2, name: 'edit', value: false)
Permission.create!(role: viewer_role, resource: resource_2, name: 'delete', value: false)
Permission.create!(role: viewer_role, resource: resource_3, name: 'view', value: true)
Permission.create!(role: viewer_role, resource: resource_3, name: 'edit', value: false)
Permission.create!(role: viewer_role, resource: resource_3, name: 'delete', value: false)
# Seed data for users
User.create!(name: 'Admin User', role: admin_role)
User.create!(name: 'Editor User', role: editor_role)
User.create!(name: 'Viewer User', role: viewer_role)
