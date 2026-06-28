.class public final Lcom/google/common/escape/Escapers;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/Escapers$Builder;
    }
.end annotation


# static fields
.field private static final NULL_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/google/common/escape/Escapers$1;

    invoke-direct {v0}, Lcom/google/common/escape/Escapers$1;-><init>()V

    sput-object v0, Lcom/google/common/escape/Escapers;->NULL_ESCAPER:Lcom/google/common/escape/Escaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asUnicodeEscaper(Lcom/google/common/escape/Escaper;)Lcom/google/common/escape/UnicodeEscaper;
    .locals 3

    .line 180
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    instance-of v0, p0, Lcom/google/common/escape/UnicodeEscaper;

    if-eqz v0, :cond_0

    .line 182
    check-cast p0, Lcom/google/common/escape/UnicodeEscaper;

    return-object p0

    .line 183
    :cond_0
    instance-of v0, p0, Lcom/google/common/escape/CharEscaper;

    if-eqz v0, :cond_1

    .line 184
    check-cast p0, Lcom/google/common/escape/CharEscaper;

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;

    move-result-object p0

    return-object p0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a UnicodeEscaper from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lcom/google/common/escape/Escapers$Builder;
    .locals 2

    .line 79
    new-instance v0, Lcom/google/common/escape/Escapers$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/Escapers$Builder;-><init>(Lcom/google/common/escape/Escapers$1;)V

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/CharEscaper;C)Ljava/lang/String;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->stringOrNull([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeReplacement(Lcom/google/common/escape/UnicodeEscaper;I)Ljava/lang/String;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->stringOrNull([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/common/escape/Escapers;->NULL_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method private static stringOrNull([C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;
    .locals 1

    .line 224
    new-instance v0, Lcom/google/common/escape/Escapers$2;

    invoke-direct {v0, p0}, Lcom/google/common/escape/Escapers$2;-><init>(Lcom/google/common/escape/CharEscaper;)V

    return-object v0
.end method
