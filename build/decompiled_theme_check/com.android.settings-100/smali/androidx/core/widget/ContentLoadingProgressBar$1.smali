.class Landroidx/core/widget/ContentLoadingProgressBar$1;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar$1;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object p0, p0, Landroidx/core/widget/ContentLoadingProgressBar$1;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    const/16 v0, 0x8

    .line 51
    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method
