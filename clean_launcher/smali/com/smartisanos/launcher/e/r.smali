.class Lcom/smartisanos/launcher/e/r;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mItem:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/e/r;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/e/r;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 4
    iput-object p3, p0, Lcom/smartisanos/launcher/e/r;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Landroid/content/ContentValues;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/e/r;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->ra(Ljava/lang/String;)Z

    move-result v6

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/e/r;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/smartisanos/launcher/e/r;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/launcher/Aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;JLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/e/r;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/e/r;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v2, "[mContext is null]"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/e/r;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    const-string p0, "[mDrawable is null]"

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/e/s;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GenerateShadowIconTask, cv is null ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/e/r;->call()Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method
