.class Lcom/smartisanos/launcher/Ga;
.super Ljava/lang/Object;
.source "Launchpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oi:Ljava/lang/String;

.field final synthetic qi:I

.field final synthetic this$0:Lcom/smartisanos/launcher/Ha;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/Ha;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Ga;->this$0:Lcom/smartisanos/launcher/Ha;

    iput-object p2, p0, Lcom/smartisanos/launcher/Ga;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/Ga;->oi:Ljava/lang/String;

    iput p4, p0, Lcom/smartisanos/launcher/Ga;->qi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/Ga;->val$pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/Ga;->oi:Ljava/lang/String;

    iget p0, p0, Lcom/smartisanos/launcher/Ga;->qi:I

    invoke-static {v0, v1, p0}, Lcom/smartisanos/launcher/d/j;->launchShortcut(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
