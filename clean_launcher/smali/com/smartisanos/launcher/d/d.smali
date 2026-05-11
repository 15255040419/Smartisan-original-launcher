.class Lcom/smartisanos/launcher/d/d;
.super Ljava/lang/Object;
.source "InstallShortcutDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/d/d;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/d/e;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/d/e;->access$100()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/d/e;->access$100()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/smartisanos/launcher/d/d;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/smartisanos/launcher/d/e;->a(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
