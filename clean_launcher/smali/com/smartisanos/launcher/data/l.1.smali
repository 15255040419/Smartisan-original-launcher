.class Lcom/smartisanos/launcher/data/l;
.super Lcom/smartisanos/launcher/data/z;
.source "DatabaseHandler.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    return-void
.end method
