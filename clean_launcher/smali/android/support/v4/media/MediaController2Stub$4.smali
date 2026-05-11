.class Landroid/support/v4/media/MediaController2Stub$4;
.super Ljava/lang/Object;
.source "MediaController2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2Stub;

.field final synthetic val$browser:Landroid/support/v4/media/MediaBrowser2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemCount:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2Stub$4;->this$0:Landroid/support/v4/media/MediaController2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$browser:Landroid/support/v4/media/MediaBrowser2;

    iput-object p3, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$query:Ljava/lang/String;

    iput p4, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$itemCount:I

    iput-object p5, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$browser:Landroid/support/v4/media/MediaBrowser2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$browser:Landroid/support/v4/media/MediaBrowser2;

    iget-object v2, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$query:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$itemCount:I

    iget-object p0, p0, Landroid/support/v4/media/MediaController2Stub$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onSearchResultChanged(Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
