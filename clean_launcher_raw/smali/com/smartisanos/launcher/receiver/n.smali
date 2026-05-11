.class Lcom/smartisanos/launcher/receiver/n;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/receiver/o;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/n;->this$1:Lcom/smartisanos/launcher/receiver/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->lg()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/receiver/n;->this$1:Lcom/smartisanos/launcher/receiver/o;

    iget-object p0, p0, Lcom/smartisanos/launcher/receiver/o;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->a(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Z)Z

    return-void
.end method
