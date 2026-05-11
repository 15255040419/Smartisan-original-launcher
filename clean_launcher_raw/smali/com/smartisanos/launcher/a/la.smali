.class Lcom/smartisanos/launcher/a/la;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/a/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/la;->this$2:Lcom/smartisanos/launcher/a/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/a/la;->this$2:Lcom/smartisanos/launcher/a/ma;

    iget-object v0, v0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/a/la;->this$2:Lcom/smartisanos/launcher/a/ma;

    iget-object v0, v0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;Z)Z

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/a/la;->this$2:Lcom/smartisanos/launcher/a/ma;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    iget-object p1, p0, Lcom/smartisanos/launcher/a/na;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-static {p0}, Lcom/smartisanos/launcher/a/na;->b(Lcom/smartisanos/launcher/a/na;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/smartisanos/launcher/a/oa;->a(Lcom/smartisanos/launcher/a/oa;I)V

    :cond_0
    return-void
.end method
