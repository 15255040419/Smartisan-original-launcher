.class public final enum Lb/d/a/b/j/h;
.super Ljava/lang/Enum;
.source "ViewScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/d/a/b/j/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/d/a/b/j/h;

.field public static final enum b:Lb/d/a/b/j/h;

.field public static synthetic c:[I

.field public static final synthetic d:[Lb/d/a/b/j/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/d/a/b/j/h;

    const/4 v1, 0x0

    const-string v2, "FIT_INSIDE"

    invoke-direct {v0, v2, v1}, Lb/d/a/b/j/h;-><init>(Ljava/lang/String;I)V

    .line 2
    sput-object v0, Lb/d/a/b/j/h;->a:Lb/d/a/b/j/h;

    .line 3
    new-instance v0, Lb/d/a/b/j/h;

    const/4 v2, 0x1

    const-string v3, "CROP"

    invoke-direct {v0, v3, v2}, Lb/d/a/b/j/h;-><init>(Ljava/lang/String;I)V

    .line 4
    sput-object v0, Lb/d/a/b/j/h;->b:Lb/d/a/b/j/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/d/a/b/j/h;

    .line 5
    sget-object v3, Lb/d/a/b/j/h;->a:Lb/d/a/b/j/h;

    aput-object v3, v0, v1

    sget-object v1, Lb/d/a/b/j/h;->b:Lb/d/a/b/j/h;

    aput-object v1, v0, v2

    sput-object v0, Lb/d/a/b/j/h;->d:[Lb/d/a/b/j/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;)Lb/d/a/b/j/h;
    .locals 1

    .line 2
    invoke-static {}, Lb/d/a/b/j/h;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 3
    sget-object p0, Lb/d/a/b/j/h;->b:Lb/d/a/b/j/h;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lb/d/a/b/j/h;->a:Lb/d/a/b/j/h;

    return-object p0
.end method

.method public static synthetic a()[I
    .locals 3

    .line 1
    sget-object v0, Lb/d/a/b/j/h;->c:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Lb/d/a/b/j/h;->c:[I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/d/a/b/j/h;
    .locals 1

    .line 1
    const-class v0, Lb/d/a/b/j/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/d/a/b/j/h;

    return-object p0
.end method

.method public static values()[Lb/d/a/b/j/h;
    .locals 4

    .line 1
    sget-object v0, Lb/d/a/b/j/h;->d:[Lb/d/a/b/j/h;

    array-length v1, v0

    new-array v2, v1, [Lb/d/a/b/j/h;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
