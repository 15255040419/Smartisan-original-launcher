.class Lcom/smartisanos/launcher/e/n;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/e/o;

.field final synthetic wu:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/e/o;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/e/n;->this$0:Lcom/smartisanos/launcher/e/o;

    iput-object p2, p0, Lcom/smartisanos/launcher/e/n;->wu:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/e/n;->wu:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->w(Ljava/util/List;)V

    return-void
.end method
