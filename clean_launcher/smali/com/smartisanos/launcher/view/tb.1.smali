.class Lcom/smartisanos/launcher/view/tb;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ni:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/tb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/tb;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/view/tb;->ni:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tb;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/tb;->ni:Z

    if-nez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tb;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tb;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v1, -0x80001

    and-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
