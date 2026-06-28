.class Lcom/android/settings/widget/LoadingViewController$1;
.super Ljava/lang/Object;
.source "LoadingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LoadingViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/LoadingViewController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/LoadingViewController;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/widget/LoadingViewController$1;->this$0:Lcom/android/settings/widget/LoadingViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/LoadingViewController$1;->this$0:Lcom/android/settings/widget/LoadingViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZ)V

    return-void
.end method
