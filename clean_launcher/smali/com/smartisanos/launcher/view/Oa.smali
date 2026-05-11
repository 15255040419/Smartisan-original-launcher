.class Lcom/smartisanos/launcher/view/Oa;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic mv:Landroid/widget/EditText;

.field final synthetic nv:Ljava/lang/Object;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qa;Landroid/widget/EditText;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Oa;->this$0:Lcom/smartisanos/launcher/view/Qa;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Oa;->mv:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Oa;->mv:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Oa;->mv:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    new-instance p2, Lcom/smartisanos/launcher/view/Na;

    const/16 v0, 0x64

    invoke-direct {p2, p0, v0, p1}, Lcom/smartisanos/launcher/view/Na;-><init>(Lcom/smartisanos/launcher/view/Oa;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Oa;->this$0:Lcom/smartisanos/launcher/view/Qa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Qa;->dismiss()V

    return-void
.end method
