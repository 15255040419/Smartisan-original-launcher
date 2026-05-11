.class Lcom/smartisanos/launcher/view/Kb;
.super Ljava/lang/Object;
.source "MultiSelectCreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Qb;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "### ok click"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/Qb;->a(Lcom/smartisanos/launcher/view/Qb;Z)Z

    .line 3
    new-instance p1, Lcom/smartisanos/launcher/view/Jb;

    const/16 p2, 0x64

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/launcher/view/Jb;-><init>(Lcom/smartisanos/launcher/view/Kb;I)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
