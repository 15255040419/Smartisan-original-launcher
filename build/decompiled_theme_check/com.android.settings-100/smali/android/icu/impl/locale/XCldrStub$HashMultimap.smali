.class public Landroid/icu/impl/locale/XCldrStub$HashMultimap;
.super Landroid/icu/impl/locale/XCldrStub$Multimap;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/locale/XCldrStub$Multimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/locale/XCldrStub$Multimap;-><init>(Ljava/util/Map;Ljava/lang/Class;Landroid/icu/impl/locale/XCldrStub$1;)V

    return-void
.end method

.method public static create()Landroid/icu/impl/locale/XCldrStub$HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/icu/impl/locale/XCldrStub$HashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$HashMultimap;

    invoke-direct {v0}, Landroid/icu/impl/locale/XCldrStub$HashMultimap;-><init>()V

    return-object v0
.end method
