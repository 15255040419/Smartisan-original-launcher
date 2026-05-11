.class Lcom/smartisanos/launcher/a/M;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Mj:Landroid/content/Intent;

.field final synthetic Nj:I

.field final synthetic Oj:I

.field final synthetic this$0:Lcom/smartisanos/launcher/a/P;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/P;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/M;->this$0:Lcom/smartisanos/launcher/a/P;

    iput-object p2, p0, Lcom/smartisanos/launcher/a/M;->Mj:Landroid/content/Intent;

    iput p3, p0, Lcom/smartisanos/launcher/a/M;->Nj:I

    iput p4, p0, Lcom/smartisanos/launcher/a/M;->Oj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/M;->Mj:Landroid/content/Intent;

    iget v1, p0, Lcom/smartisanos/launcher/a/M;->Nj:I

    iget p0, p0, Lcom/smartisanos/launcher/a/M;->Oj:I

    invoke-static {v0, v1, p0}, Lcom/smartisanos/launcher/a/P;->a(Landroid/content/Intent;II)V

    return-void
.end method
