.class public Lsmartisan/widget/tabswitcher/AnimationPanel$e;
.super Ljava/lang/Object;
.source "AnimationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/tabswitcher/AnimationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public final synthetic c:Lsmartisan/widget/tabswitcher/AnimationPanel;


# direct methods
.method public constructor <init>(Lsmartisan/widget/tabswitcher/AnimationPanel;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->c:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->a:F

    .line 3
    iput p3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->b:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->c:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/AnimationPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->c:Lsmartisan/widget/tabswitcher/AnimationPanel;

    iget v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->a:F

    iget v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->b:F

    invoke-static {v0, v1, v2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/AnimationPanel;FF)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;->c:Lsmartisan/widget/tabswitcher/AnimationPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z

    :cond_0
    return-void
.end method
