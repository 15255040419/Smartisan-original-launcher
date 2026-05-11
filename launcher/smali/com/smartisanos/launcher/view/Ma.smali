.class Lcom/smartisanos/launcher/view/Ma;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ma;->this$0:Lcom/smartisanos/launcher/view/Qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ma;->this$0:Lcom/smartisanos/launcher/view/Qa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Qa;->dismiss()V

    return-void
.end method
