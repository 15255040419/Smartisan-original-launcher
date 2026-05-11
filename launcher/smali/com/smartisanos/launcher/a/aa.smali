.class Lcom/smartisanos/launcher/a/aa;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/a/na;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/na;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/aa;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$100()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/a/aa;->this$1:Lcom/smartisanos/launcher/a/na;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;Z)Z

    :cond_0
    return-void
.end method
