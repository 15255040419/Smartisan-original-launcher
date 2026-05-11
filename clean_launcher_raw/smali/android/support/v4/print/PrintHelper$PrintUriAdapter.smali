.class Landroid/support/v4/print/PrintHelper$PrintUriAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

.field private final mFittingMode:I

.field private final mImageFile:Landroid/net/Uri;

.field private final mJobName:Ljava/lang/String;

.field mLoadBitmap:Landroid/os/AsyncTask;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    .line 4
    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mCallback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .line 5
    iput p5, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;)Landroid/print/PrintAttributes;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    return-object p0
.end method

.method private cancelLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper;->access$800(Landroid/support/v4/print/PrintHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 4
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mCallback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 5
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    return-void

    .line 6
    :cond_0
    iget-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p5, :cond_1

    .line 7
    new-instance p3, Landroid/print/PrintDocumentInfo$Builder;

    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {p3, p0}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {p3, p0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p3

    .line 9
    invoke-virtual {p3, p0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p3

    .line 11
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p0, p1

    .line 12
    invoke-virtual {p4, p3, p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void

    .line 13
    :cond_1
    new-instance p5, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/net/Uri;

    .line 14
    invoke-virtual {p5, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/support/v4/print/PrintHelper;->access$000(Landroid/support/v4/print/PrintHelper;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method
