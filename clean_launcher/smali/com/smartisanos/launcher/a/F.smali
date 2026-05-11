.class Lcom/smartisanos/launcher/a/F;
.super Ljava/lang/Object;
.source "LargeCreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/a/G;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/F;->this$0:Lcom/smartisanos/launcher/a/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sput-object p1, Lcom/smartisanos/launcher/a/G;->Fj:Landroid/app/AlertDialog;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/a/F;->this$0:Lcom/smartisanos/launcher/a/G;

    invoke-static {p1}, Lcom/smartisanos/launcher/a/G;->a(Lcom/smartisanos/launcher/a/G;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/a/F;->this$0:Lcom/smartisanos/launcher/a/G;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/G;->a(Lcom/smartisanos/launcher/a/G;Z)Z

    :goto_0
    return-void
.end method
