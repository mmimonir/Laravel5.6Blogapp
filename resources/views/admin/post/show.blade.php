@extends('layouts.backend.app')

@section('title', 'Post')

@push('css')
    
@endpush

@section('content')
<div class="container-fluid">        
        <!-- Vertical Layout | With Floating Label -->
   <a href="{{ route('admin.post.index') }}" class="btn btn-danger waves-effect">BACK</a>
   @if ($post->is_approved == false)
       <button type="button" class="btn btn-success waves-effect pull-right" onclick="approvePost({{ $post->id }})">
           <i class="material-icons">done</i>
           <span>Approve</span>
       </button>
       <form method="POST" action="{{ route('admin.post.approve', $post->id) }}" id="approval-form" style="display: none;">
           @csrf
           @method('PUT')
       </form>
    @else
        <button type="button" class="btn btn-success pull-right" disabled="disabled">
           <i class="material-icons">done</i>
           <span>Approved</span>
       </button>
    @endif
    <br>
    <br>
        <div class="row clearfix">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            {{ $post->title }}
                            <small>Posted By <strong><a href="">{{ $post->user->name }}</a></strong> on {{ $post->created_at->toFormattedDateString() }}</small>
                        </h2>                        
                    </div>
                    <div class="body">                        
                            {!! $post->body !!}
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header bg-cyan">
                        <h2>
                            Categories
                        </h2>                        
                    </div>
                    <div class="body">
                        @foreach ($post->categories as $category)
                            <span class="label bg-cyan">{{ $category->name }}</span>
                        @endforeach
                    </div>
                </div>
                <div class="card">
                    <div class="header bg-green">
                        <h2>
                            Tags
                        </h2>                        
                    </div>
                    <div class="body">
                        @foreach ($post->tags as $tag)
                            <span class="label bg-green">{{ $tag->name }}</span>
                        @endforeach
                    </div>
                </div>
                <div class="card">
                    <div class="header bg-amber">
                        <h2>
                            Featured Image
                        </h2>                        
                    </div>
                    <div class="body">
                        <img class="img-responsive thumbnail" src="{{ asset('storage/post/').$post->image }}">
                    </div>
                </div>
            </div>
        </div>
        
    
        <!-- Vertical Layout | With Floating Label -->
    </div>
@endsection
@push('js')
<!-- Select Plugin Js -->
    <script src="{{ asset('assets/backend/plugins/bootstrap-select/js/bootstrap-select.js')}}"></script>
    <!-- TinyMCE -->
    
<script src="https://cdn.jsdelivr.net/npm/sweetalert2"></script>
<script type="text/javascript">
function approvePost(id) {
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false,
    })

    swalWithBootstrapButtons({
        title: 'Are you sure?',
        text: "You want to approve this post!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Yes, approve it!',
        cancelButtonText: 'No, cancel!',
        reverseButtons: true
    }).then((result) => {
        if (result.value) {
            // event.preventDefault();
            document.getElementById('approval-form').submit();
        } else if (
            // Read more about handling dismissals
            result.dismiss === swal.DismissReason.cancel
        ) {
            swalWithBootstrapButtons(
                'Cancelled',
                'The post remain pending :)',
                'info'
            )
        }
    })
}

</script>
@endpush
