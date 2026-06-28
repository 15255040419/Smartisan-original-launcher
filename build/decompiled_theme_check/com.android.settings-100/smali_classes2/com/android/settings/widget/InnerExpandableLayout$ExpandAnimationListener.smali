.class Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;
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
    name = "ExpandAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/InnerExpandableLayout;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/InnerExpandableLayout;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;-><init>(Lcom/android/settings/widget/InnerExpandableLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$202(Lcom/android/settings/widget/InnerExpandableLayout;Z)Z

    .line 176
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    sget-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_EXPAND:Lcom/android/settings/widget/InnerExpandableLayout$State;

    invoke-static {p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$402(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$State;)Lcom/android/settings/widget/InnerExpandableLayout$State;

    .line 177
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p1}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;->onExpanded()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$202(Lcom/android/settings/widget/InnerExpandableLayout;Z)Z

    .line 168
    iget-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p1}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-static {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;->onExpanding()V

    :cond_0
    return-void
.end method
