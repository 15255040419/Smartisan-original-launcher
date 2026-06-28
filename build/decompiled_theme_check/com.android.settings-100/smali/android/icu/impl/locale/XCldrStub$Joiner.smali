.class public Landroid/icu/impl/locale/XCldrStub$Joiner;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Joiner"
.end annotation


# instance fields
.field private final separator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$Joiner;->separator:Ljava/lang/String;

    return-void
.end method

.method public static final on(Ljava/lang/String;)Landroid/icu/impl/locale/XCldrStub$Joiner;
    .locals 1

    .line 275
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$Joiner;

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XCldrStub$Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 281
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Joiner;->separator:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/icu/impl/locale/XCldrStub;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 278
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Joiner;->separator:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/icu/impl/locale/XCldrStub;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
