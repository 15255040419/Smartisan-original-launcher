.class final enum Lcom/google/common/hash/Hashing$ChecksumType$2;
.super Lcom/google/common/hash/Hashing$ChecksumType;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing$ChecksumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/Hashing$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$ChecksumType$2;->get()Ljava/util/zip/Checksum;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/zip/Checksum;
    .locals 0

    .line 399
    new-instance p0, Ljava/util/zip/Adler32;

    invoke-direct {p0}, Ljava/util/zip/Adler32;-><init>()V

    return-object p0
.end method
