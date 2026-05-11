.class Lcom/smartisanos/launcher/view/Ja;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic mv:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qa;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ja;->this$0:Lcom/smartisanos/launcher/view/Qa;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Ja;->mv:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ja;->this$0:Lcom/smartisanos/launcher/view/Qa;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/smartisanos/launcher/view/Qa;->a(Lcom/smartisanos/launcher/view/Qa;Z)Z

    .line 4
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ja;->mv:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ja;->mv:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
