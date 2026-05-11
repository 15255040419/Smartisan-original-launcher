.class Lcom/smartisanos/launcher/A;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Of:Z

.field final synthetic Pf:I

.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/A;->this$0:Lcom/smartisanos/launcher/J;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/A;->Of:Z

    iput p3, p0, Lcom/smartisanos/launcher/A;->Pf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/A;->this$0:Lcom/smartisanos/launcher/J;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/smartisanos/launcher/A;->Of:Z

    if-eqz v2, :cond_0

    .line 4
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p0, Lcom/smartisanos/launcher/A;->Pf:I

    or-int/2addr p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 5
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p0, Lcom/smartisanos/launcher/A;->Pf:I

    not-int p0, p0

    and-int/2addr p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
