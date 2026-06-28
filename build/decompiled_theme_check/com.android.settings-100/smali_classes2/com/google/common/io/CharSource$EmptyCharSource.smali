.class final Lcom/google/common/io/CharSource$EmptyCharSource;
.super Lcom/google/common/io/CharSource$StringCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCharSource"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 662
    new-instance v0, Lcom/google/common/io/CharSource$EmptyCharSource;

    invoke-direct {v0}, Lcom/google/common/io/CharSource$EmptyCharSource;-><init>()V

    sput-object v0, Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 665
    invoke-direct {p0, v0}, Lcom/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/io/CharSource$EmptyCharSource;
    .locals 1

    .line 660
    sget-object v0, Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CharSource.empty()"

    return-object p0
.end method
