.class Lcom/smartisanos/launcher/data/i;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Jq:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/i;->Jq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/i;->Jq:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->m(Ljava/lang/String;I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/data/i;->Jq:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/lang/String;I)V

    return-void
.end method
