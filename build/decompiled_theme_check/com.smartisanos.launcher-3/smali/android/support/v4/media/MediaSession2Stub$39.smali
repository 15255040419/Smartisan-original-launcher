.class Landroid/support/v4/media/MediaSession2Stub$39;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$39;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$query:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$page:I

    iput p4, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$pageSize:I

    iput-object p5, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSession2Stub"

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSearchResult(): Ignoring empty query from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$page:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    iget v0, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$pageSize:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$39;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    invoke-static {v0}, Landroid/support/v4/media/MediaSession2Stub;->access$700(Landroid/support/v4/media/MediaSession2Stub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$query:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$page:I

    iget v5, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$pageSize:I

    iget-object v6, p0, Landroid/support/v4/media/MediaSession2Stub$39;->val$extras:Landroid/os/Bundle;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->onGetSearchResultOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSearchResult(): Ignoring page nor pageSize less than 1  from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
