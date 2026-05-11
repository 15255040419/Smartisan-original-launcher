.class Lcom/smartisanos/launcher/e/q;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final _j:Lcom/smartisanos/launcher/data/ItemInfo;

.field private final values:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/e/q;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/e/q;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/e/q;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/e/q;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->c([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->d(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/e/q;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/e/q;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/e/q;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "owner"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/e/q;->values:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method
