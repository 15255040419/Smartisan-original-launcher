.class Lcom/smartisanos/launcher/view/Oc;
.super Ljava/lang/Object;
.source "TrashView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Sc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Sc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Oc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
