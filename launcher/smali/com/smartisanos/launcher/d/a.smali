.class Lcom/smartisanos/launcher/d/a;
.super Ljava/lang/Object;
.source "InstallShortcutDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/d/b;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/d/a;->this$0:Lcom/smartisanos/launcher/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/a;->this$0:Lcom/smartisanos/launcher/d/b;

    iget-object p0, p0, Lcom/smartisanos/launcher/d/b;->Mj:Landroid/content/Intent;

    invoke-static {p0}, Lcom/smartisanos/launcher/d/j;->f(Landroid/content/Intent;)V

    return-void
.end method
