.class final Lcom/google/common/base/CharMatcher$Ascii;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ascii"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Ascii;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1458
    new-instance v0, Lcom/google/common/base/CharMatcher$Ascii;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Ascii;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$Ascii;->INSTANCE:Lcom/google/common/base/CharMatcher$Ascii;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.ascii()"

    .line 1461
    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 0

    const/16 p0, 0x7f

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
