.class Lcom/smartisanos/launcher/c;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/d;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/c;->this$1:Lcom/smartisanos/launcher/d;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/16 p0, 0xc

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/Sa;->sendEmptyMessage(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    return-void
.end method
