<div class="modal fade" id="editUserModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="editStudentLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title text-center">Edit user data</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <form action="/edit-user-data" method="post">
          <div class="col-6 mx-auto">
            <div class="row">
              <div class="col-12 mx-auto mb-2">
                <input class="form-control" type="hidden" name="id"
                       value="<%= user.getId() %>">
              </div>
            </div>
            <div class="row">
              <div class="col-12 mx-auto mb-2">
                <label for="name" class="form-label">Full name:</label>
                <input id="name" class="form-control" type="text" name="name"
                       value="<%= user.getFullName() %>">
              </div>
            </div>


            <div class="row">
              <div class="col-12 mx-auto mb-2">
                <label for="email" class="form-label">Email:</label>
                <input id="email" class="form-control" type="email" name="email"
                       value="<%= user.getEmail() %>">
              </div>
            </div>

            <div class="row">
              <div class="col-12 mx-auto mb-4">
                <label for="password" class="form-label">Password:</label>
                <input id="password" class="form-control" type="password" name="password"
                       value="<%= user.getPassword() %>">
              </div>
            </div>

            <div class="row">
              <div class="col-12 mx-auto mb-2">
                <button class="btn btn-success w-100">CONFIRM CHANGES</button>
              </div>
            </div>
          </div>
        </form>
      </div>

      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-main w-50" data-bs-dismiss="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>