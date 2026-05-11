.class Lcom/smartisanos/launcher/view/Nb;
.super Ljava/lang/Object;
.source "MultiSelectCreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Nb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sput-object p1, Lcom/smartisanos/launcher/view/Qb;->Fj:Landroid/app/AlertDialog;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Nb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/Qb;->a(Lcom/smartisanos/launcher/view/Qb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Nb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Qb;->c(Lcom/smartisanos/launcher/view/Qb;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Nb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/Qb;->a(Lcom/smartisanos/launcher/view/Qb;Z)Z

    :goto_0
    return-void
.end method
