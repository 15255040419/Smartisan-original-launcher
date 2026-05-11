.class Lcom/smartisanos/launcher/a/ka;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/a/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ka;->this$2:Lcom/smartisanos/launcher/a/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$100()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/a/ka;->this$2:Lcom/smartisanos/launcher/a/ma;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;Z)Z

    :cond_0
    return-void
.end method
