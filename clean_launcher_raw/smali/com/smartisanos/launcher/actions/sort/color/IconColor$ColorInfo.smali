.class public Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
.super Ljava/lang/Object;
.source "IconColor.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static Yk:Ljava/util/HashMap;


# instance fields
.field public colorName:Ljava/lang/String;

.field public colorRatio:D

.field public hsl:[F

.field public imagePath:Ljava/lang/String;

.field public majorColor:I

.field public num:I

.field public resize:Z

.field public sortValue:D

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->Yk:Ljava/util/HashMap;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->Yk:Ljava/util/HashMap;

    const-string v1, "majorColor"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->Yk:Ljava/util/HashMap;

    const-string v1, "num"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->Yk:Ljava/util/HashMap;

    const-string v1, "total"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 9
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    .line 10
    iget p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    iget-object p2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/actions/sort/color/f;->a(I[F)V

    .line 11
    iput p3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    .line 12
    iput p4, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    .line 13
    iget p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    int-to-double p1, p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, p3

    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    div-double/2addr p1, v2

    iput-wide p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    .line 14
    iget p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const/high16 p2, -0x1000000

    if-eq p1, p2, :cond_3

    const p2, -0x777778

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-wide p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, p3

    .line 16
    :goto_0
    iget-object p3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    const/4 p4, 0x1

    aget p4, p3, p4

    const/4 v0, 0x2

    aget p3, p3, v0

    sub-float/2addr v1, p3

    div-float/2addr p4, v1

    float-to-double p3, p4

    mul-double/2addr p3, p1

    iput-wide p3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 18
    sget-object p2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object p2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLUE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object p2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object p2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->YELLOW:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 21
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    :cond_2
    iget-wide p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    neg-double p1, p1

    iput-wide p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    goto :goto_2

    .line 23
    :cond_3
    :goto_1
    iget-wide p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    iput-wide p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    :cond_4
    :goto_2
    return-void
.end method

.method public static K(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, ","

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 3
    aget-object v1, p0, v1

    const/4 v2, 0x1

    .line 4
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 5
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 6
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 7
    new-instance v4, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    iget-wide p0, p1, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpl-double v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpg-double p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 3

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->imagePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->imagePath:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    iput v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    iput v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    iput v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    iput-object v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    .line 9
    iget-wide v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    iput-wide v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    .line 10
    iget-wide v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    iput-wide v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->a(Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;)I

    move-result p0

    return p0
.end method

.method public e(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    return-void
.end method

.method public td()Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->L(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
