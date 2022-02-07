<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 stretch-card">
            <div class="card">
                <div class="card-body">
                    <!--Content Card-->
                    <div class="container-fluid d-flex justify-content-start mt-2">
                        <a href="./index.php"
                            class="auth-link text-black text-decoration-none float-end mdi mdi-keyboard-backspace menu-icon mb-3"
                            style="text-align: left; font-size: 18pt">
                            Kembali
                        </a>
                    </div>
                    <div class="container-fluid d-flex justify-content-end mb-2">
                        <div class="row">
                            <div class="col">
                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#exampleModalLong">
                                    Launch demo modal
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog"
                                    aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                ...
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col">
                                <button class="btn btn-danger rounded-pill" style="font-size: 12pt;"
                                    type="button">Hapus</button>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid d-flex justify-content-center">
                        <img src="http://localhost/rpl2/public/img/wp6392619-batik-android-wallpapers.jpg"
                            class="img-fluid me- rounded" alt="..." style="height: 350px; width:500px">
                    </div>
                    <div class="container-fluid d-flex justify-content-start mt-4">
                        <article class="blog-post">
                            <h5 class="display-3"><?=$data['batik']['nama'] ?></h5>
                            <p class="blog-post-meta text-secondary">January 1, 2021 by Mark</p>
                            <p class="font-weight-light">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
                                auctor. Duis mollis, est
                                non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi
                                leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>