.class public Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;
.super Ljava/util/MissingFormatArgumentException;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu/org/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessiveOrMissingFormatArgumentException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:I

.field private final found:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "-"

    .line 169
    invoke-direct {p0, v0}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    iput p1, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    .line 171
    iput p2, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    return-void
.end method


# virtual methods
.method public getExpected()I
    .locals 0

    .line 175
    iget p0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    return p0
.end method

.method public getFound()I
    .locals 0

    .line 179
    iget p0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    iget v1, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "Expected %d arguments but found %d."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
