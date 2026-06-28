.class Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;
.super Ljava/lang/Object;
.source "InnerExpandableLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/InnerExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapseAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/InnerExpandableLayout;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/InnerExpandableLayout;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;-><init>(Lcom/android/settings/widget/InnerExpandableLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$202(Lcom/android/settings/widget/InnerExpandableLayout;Z)Z

    .line 200
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    sget-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_COLLAPSE:Lcom/android/settings/widget/InnerExpandableLayout$State;

    invoke-static {p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$402(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$State;)Lcom/android/settings/widget/InnerExpandableLayout$State;

    .line 201
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p1}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;->onCollapsed()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$202(Lcom/android/settings/widget/InnerExpandableLayout;Z)Z

    .line 192
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p1}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;->onCollapsing()V

    :cond_0
    return-void
.end method
