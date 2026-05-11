.class public Lcom/smartisanos/launcher/actions/sort/color/f;
.super Ljava/lang/Object;
.source "IconColor.java"


# static fields
.field public static final bl:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

.field public static final cl:Ljava/util/Comparator;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/smartisanos/launcher/actions/sort/color/f;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/f;->log:Lcom/smartisanos/launcher/va;

    const/16 v0, 0x8

    new-array v0, v0, [[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 2
    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->VY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v2, v0, v4

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->RED:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v4

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->ORANGE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v1

    aput-object v3, v0, v1

    new-array v3, v1, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->YELLOW:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v4

    aput-object v3, v0, v2

    new-array v3, v2, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v4

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->RY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v1

    const/4 v5, 0x3

    aput-object v3, v0, v5

    new-array v3, v5, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLUE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v4

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v1

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->SY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v2

    const/4 v5, 0x4

    aput-object v3, v0, v5

    new-array v3, v1, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v5, v3, v4

    const/4 v5, 0x5

    aput-object v3, v0, v5

    new-array v2, v2, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GRAY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v3, v2, v4

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->WHITE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v3, v2, v1

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->TY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/f;->bl:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/color/c;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/color/c;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/f;->cl:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(FFF)Z
    .locals 6

    const/high16 v0, 0x43af0000    # 350.0f

    const/high16 v1, 0x43aa0000    # 340.0f

    .line 1
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    const v2, 0x3e19999a    # 0.15f

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const v1, 0x3f51eb85    # 0.82f

    invoke-static {v1, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const v1, 0x43b18000    # 355.0f

    .line 2
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    .line 3
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_2

    const v0, 0x3f266666    # 0.65f

    invoke-static {v0, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    .line 4
    invoke-static {v0, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    invoke-static {v5, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    const/high16 v0, 0x41800000    # 16.0f

    .line 5
    invoke-static {v2, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v5, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static B(FFF)Z
    .locals 6

    const/high16 v0, 0x42140000    # 37.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 1
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    if-eqz v1, :cond_0

    invoke-static {v5, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->p(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    .line 2
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v5, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f19999a    # 0.6f

    invoke-static {p0, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->p(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static C(FFF)Z
    .locals 1

    const/4 p0, 0x0

    const v0, 0x3dcccccd    # 0.1f

    .line 1
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f666666    # 0.9f

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p2, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static D(FFF)Z
    .locals 4

    const/high16 v0, 0x42400000    # 48.0f

    const/high16 v1, 0x42680000    # 58.0f

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x42140000    # 37.0f

    .line 2
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3ecccccd    # 0.4f

    invoke-static {p0, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static L(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .locals 9

    if-eqz p0, :cond_4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/f;->bl:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-nez v7, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v7

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(I[F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->e(I[F)V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/f;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static b(I[F)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .locals 6

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/2addr v2, v1

    shr-int/lit8 v3, p0, 0x8

    and-int/2addr v3, v1

    and-int/lit16 v4, p0, 0xff

    const/4 v5, 0x0

    if-ge v0, v1, :cond_0

    return-object v5

    :cond_0
    add-int/2addr v2, v3

    add-int/2addr v2, v4

    if-nez v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->e(I[F)V

    const/4 p0, 0x0

    .line 3
    aget p0, p1, p0

    const/4 v0, 0x1

    .line 4
    aget v0, p1, v0

    const/4 v1, 0x2

    .line 5
    aget p1, p1, v1

    .line 6
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->B(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->TY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 8
    :cond_2
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->q(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 10
    :cond_3
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->u(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GRAY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 12
    :cond_4
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->y(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 14
    :cond_5
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->s(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->TY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 16
    :cond_6
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->C(FFF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->WHITE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 18
    :cond_7
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->A(FFF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->RED:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 20
    :cond_8
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->w(FFF)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->ORANGE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 22
    :cond_9
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->D(FFF)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->YELLOW:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 24
    :cond_a
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->x(FFF)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 26
    :cond_b
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->v(FFF)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 28
    :cond_c
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->t(FFF)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 29
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->RY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 30
    :cond_d
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->r(FFF)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 31
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLUE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    .line 32
    :cond_e
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->z(FFF)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 33
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    return-object p0

    :cond_f
    return-object v5
.end method

.method public static c(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->q(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->d(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 12

    if-nez p0, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/f;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "getMajorColor image is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    new-instance v2, Lcom/smartisanos/launcher/actions/sort/color/d;

    invoke-direct {v2}, Lcom/smartisanos/launcher/actions/sort/color/d;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 6
    sget v4, Lcom/smartisanos/launcher/data/Constants;->icon_resize_area:F

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v0, :cond_5

    move v9, v7

    move v7, v5

    :goto_1
    if-ge v7, v1, :cond_4

    .line 7
    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    shr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    if-ge v11, v8, :cond_2

    add-int/lit8 v9, v9, 0x1

    .line 8
    :cond_2
    invoke-static {v10, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->b(I[F)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/smartisanos/launcher/actions/sort/color/d;->a(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/actions/sort/color/d;->sd()Lcom/smartisanos/launcher/actions/sort/color/e;

    move-result-object p0

    if-nez p0, :cond_7

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/f;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "no color was found !!!"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    new-instance p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-direct {p0, v2, v3, v8, v8}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>(Ljava/lang/String;III)V

    int-to-float v2, v7

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    cmpg-float v0, v2, v4

    if-gez v0, :cond_6

    .line 13
    iput-boolean v8, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    :cond_6
    return-object p0

    .line 14
    :cond_7
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/color/e;->ud()I

    move-result v5

    .line 16
    new-instance v6, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    iget p0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->Zk:I

    iget v2, v2, Lcom/smartisanos/launcher/actions/sort/color/d;->count:I

    invoke-direct {v6, v3, v5, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>(Ljava/lang/String;III)V

    int-to-float p0, v7

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_8

    .line 17
    iput-boolean v8, v6, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    :cond_8
    return-object v6
.end method

.method public static e(Ljava/util/List;)Ljava/util/Map;
    .locals 5

    if-eqz p0, :cond_8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_6

    .line 4
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->VY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launcherError. to load color. splitByColor error by color is null. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/smartisanos/launcher/actions/sort/color/b;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v1}, Lcom/smartisanos/launcher/actions/sort/color/b;-><init>(ILcom/smartisanos/launcher/data/ItemInfo;)V

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/vb;->start()V

    .line 10
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->td()Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object v2

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitByColor error by color is null. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->td()Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_5
    sget-object p0, Lcom/smartisanos/launcher/actions/sort/color/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "splitByColor hue is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "splitByColor error by item is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(I[F)V
    .locals 8

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 21
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 22
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v4, v1, v3

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move p0, v5

    goto :goto_0

    :cond_0
    cmpl-float v4, v1, v0

    const/high16 v6, 0x42700000    # 60.0f

    if-nez v4, :cond_1

    cmpl-float v7, v2, p0

    if-ltz v7, :cond_1

    sub-float/2addr v2, p0

    mul-float/2addr v2, v6

    sub-float p0, v1, v3

    div-float/2addr v2, p0

    add-float p0, v2, v5

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    cmpg-float v4, v2, p0

    if-gez v4, :cond_2

    sub-float/2addr v2, p0

    mul-float/2addr v2, v6

    sub-float p0, v1, v3

    div-float/2addr v2, p0

    const/high16 p0, 0x43b40000    # 360.0f

    add-float/2addr p0, v2

    goto :goto_0

    :cond_2
    cmpl-float v4, v1, v2

    if-nez v4, :cond_3

    sub-float/2addr p0, v0

    mul-float/2addr p0, v6

    sub-float v0, v1, v3

    div-float/2addr p0, v0

    const/high16 v0, 0x42f00000    # 120.0f

    add-float/2addr p0, v0

    goto :goto_0

    :cond_3
    sub-float/2addr v0, v2

    mul-float/2addr v0, v6

    sub-float p0, v1, v3

    div-float/2addr v0, p0

    const/high16 p0, 0x43700000    # 240.0f

    add-float/2addr p0, v0

    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    add-float v2, v1, v3

    mul-float/2addr v2, v0

    const v0, -0x48d83a54    # -1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    sub-float v0, v1, v3

    div-float v5, v0, v1

    :goto_1
    const/4 v0, 0x0

    .line 23
    aput p0, p1, v0

    const/4 p0, 0x1

    .line 24
    aput v5, p1, p0

    const/4 p0, 0x2

    .line 25
    aput v2, p1, p0

    return-void
.end method

.method private static n(FFF)Z
    .locals 0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static o(FFF)Z
    .locals 0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static p(FFF)Z
    .locals 0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static q(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x40

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 11
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0, v6, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static q(FFF)Z
    .locals 8

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    .line 1
    invoke-static {v1, p1, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const v2, 0x43928000    # 293.0f

    const/high16 v4, 0x433c0000    # 188.0f

    .line 2
    invoke-static {v4, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v5

    const v6, 0x3e6b851f    # 0.23f

    const v7, 0x3e4ccccd    # 0.2f

    if-eqz v5, :cond_1

    invoke-static {v0, p1, v7}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-static {v4, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v7, p1, p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static r(FFF)Z
    .locals 6

    const/high16 v0, 0x433c0000    # 188.0f

    const/high16 v1, 0x43700000    # 240.0f

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 2
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    const v2, 0x3e6b851f    # 0.23f

    if-eqz v0, :cond_1

    invoke-static {v3, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/high16 v0, 0x437a0000    # 250.0f

    .line 3
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x3f59999a    # 0.85f

    invoke-static {p0, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v2, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static s(FFF)Z
    .locals 10

    const/high16 v0, 0x42400000    # 48.0f

    const/high16 v1, 0x42140000    # 37.0f

    .line 1
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x1

    const v7, 0x3e19999a    # 0.15f

    if-eqz v2, :cond_0

    invoke-static {v4, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    .line 2
    :cond_0
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-static {v5, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v6

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    .line 3
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v5, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v7, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    return v6

    .line 4
    :cond_2
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    const/high16 v8, 0x3f400000    # 0.75f

    if-eqz v1, :cond_3

    invoke-static {v4, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v7, p2, v8}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    return v6

    :cond_3
    const/high16 v1, 0x43af0000    # 350.0f

    const/high16 v5, 0x43b40000    # 360.0f

    .line 5
    invoke-static {v1, p0, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    const v5, 0x3e99999a    # 0.3f

    if-eqz v1, :cond_4

    invoke-static {v4, p1, v8}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v7, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    return v6

    :cond_4
    const/4 v1, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    .line 6
    invoke-static {v1, p0, v8}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v1, :cond_5

    invoke-static {v4, p1, v9}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v7, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    return v6

    .line 7
    :cond_5
    invoke-static {v8, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v9, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v7, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static t(FFF)Z
    .locals 2

    const/high16 v0, 0x43160000    # 150.0f

    const/high16 v1, 0x433c0000    # 188.0f

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3e19999a    # 0.15f

    invoke-static {p0, p2, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static u(FFF)Z
    .locals 4

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    .line 1
    invoke-static {v1, p1, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const v1, 0x3e99999a    # 0.3f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x433c0000    # 188.0f

    const v3, 0x43928000    # 293.0f

    .line 2
    invoke-static {v1, p0, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p1, p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3e6b851f    # 0.23f

    const p1, 0x3f19999a    # 0.6f

    invoke-static {p0, p2, p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static v(FFF)Z
    .locals 2

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43160000    # 150.0f

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3e19999a    # 0.15f

    invoke-static {p0, p2, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static w(FFF)Z
    .locals 2

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x42140000    # 37.0f

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {v0, p1, p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, p2, p0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static x(FFF)Z
    .locals 2

    const/high16 v0, 0x42680000    # 58.0f

    const/high16 v1, 0x42b40000    # 90.0f

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3e19999a    # 0.15f

    invoke-static {p0, p2, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static y(FFF)Z
    .locals 9

    const/high16 v0, 0x40a00000    # 5.0f

    const/4 v1, 0x0

    .line 1
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-static {v4, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    :cond_0
    const/high16 v1, 0x41800000    # 16.0f

    .line 2
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :cond_1
    const/high16 v0, 0x438c0000    # 280.0f

    const v1, 0x43928000    # 293.0f

    .line 3
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    const v2, 0x3f266666    # 0.65f

    if-eqz v0, :cond_2

    invoke-static {v4, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f666666    # 0.9f

    invoke-static {v0, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v5

    :cond_2
    const/high16 v0, 0x43aa0000    # 340.0f

    .line 4
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4, p1, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    return v5

    :cond_3
    const/high16 v1, 0x43af0000    # 350.0f

    .line 5
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v7

    const v8, 0x3e99999a    # 0.3f

    if-eqz v7, :cond_4

    const v7, 0x3f51eb85    # 0.82f

    invoke-static {v3, p1, v7}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v7

    if-eqz v7, :cond_4

    return v5

    .line 6
    :cond_4
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    return v5

    :cond_5
    const v0, 0x43b18000    # 355.0f

    .line 7
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v4, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v8, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    return v5

    :cond_6
    const/high16 v1, 0x43b40000    # 360.0f

    .line 8
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v4, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v8, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static z(FFF)Z
    .locals 8

    const v0, 0x43928000    # 293.0f

    const/high16 v1, 0x437a0000    # 250.0f

    .line 1
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    const v2, 0x3e6b851f    # 0.23f

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v1, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const/high16 v1, 0x43700000    # 240.0f

    .line 2
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3dcccccd    # 0.1f

    if-eqz v5, :cond_1

    invoke-static {v7, p1, v6}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v6, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->o(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const/high16 v1, 0x43aa0000    # 340.0f

    .line 4
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    const v2, 0x3e19999a    # 0.15f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    invoke-static {v7, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    const/high16 v0, 0x43af0000    # 350.0f

    .line 5
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x3f51eb85    # 0.82f

    invoke-static {v5, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v2, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    .line 6
    :cond_4
    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v7, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v2, p2, v5}, Lcom/smartisanos/launcher/actions/sort/color/f;->n(FFF)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
