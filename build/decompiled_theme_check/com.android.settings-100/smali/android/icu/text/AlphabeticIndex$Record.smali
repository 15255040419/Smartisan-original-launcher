.class public Landroid/icu/text/AlphabeticIndex$Record;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)V"
        }
    .end annotation

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    .line 825
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 819
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;
    .locals 0

    .line 819
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 843
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0

    .line 834
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
