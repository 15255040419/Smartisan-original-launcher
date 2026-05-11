.class Lcom/smartisanos/launcher/a/X;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/a/Y;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/Y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/X;->this$2:Lcom/smartisanos/launcher/a/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/a/J;->Jj:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method
