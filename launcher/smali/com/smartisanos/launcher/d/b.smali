.class Lcom/smartisanos/launcher/d/b;
.super Ljava/lang/Object;
.source "InstallShortcutDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Mj:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/d/b;->Mj:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    new-instance p1, Lcom/smartisanos/launcher/d/a;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/d/a;-><init>(Lcom/smartisanos/launcher/d/b;)V

    invoke-static {p1}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method
