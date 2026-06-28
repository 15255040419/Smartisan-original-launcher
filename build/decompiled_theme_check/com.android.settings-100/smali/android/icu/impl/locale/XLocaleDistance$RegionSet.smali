.class Landroid/icu/impl/locale/XLocaleDistance$RegionSet;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegionSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;
    }
.end annotation


# instance fields
.field private operation:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

.field private final tempRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    const/4 v0, 0x0

    .line 1215
    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->operation:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/XLocaleDistance$1;)V
    .locals 0

    .line 1211
    invoke-direct {p0}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/icu/impl/locale/XLocaleDistance$RegionSet;Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 1211
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/impl/locale/XLocaleDistance$RegionSet;)Ljava/util/Set;
    .locals 0

    .line 1211
    invoke-direct {p0}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->inverse()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private add(Ljava/lang/String;II)V
    .locals 0

    if-le p3, p2, :cond_0

    .line 1249
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1250
    iget-object p2, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->operation:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->changeSet(Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private changeSet(Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;Ljava/lang/String;)V
    .locals 2

    .line 1255
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED_FINAL:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v0, p2}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1256
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1257
    sget-object p2, Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;->add:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    if-ne p2, p1, :cond_0

    .line 1258
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1260
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1262
    :cond_1
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;->add:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    if-ne v0, p1, :cond_2

    .line 1263
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1265
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private inverse()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1242
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->access$500()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1243
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private parseSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1218
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;->add:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->operation:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    .line 1220
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 1222
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1223
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1231
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->add(Ljava/lang/String;II)V

    add-int/lit8 v1, v0, 0x1

    .line 1233
    sget-object v2, Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;->remove:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    iput-object v2, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->operation:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    goto :goto_1

    .line 1226
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->add(Ljava/lang/String;II)V

    add-int/lit8 v1, v0, 0x1

    .line 1228
    sget-object v2, Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;->add:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    iput-object v2, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->operation:Landroid/icu/impl/locale/XLocaleDistance$RegionSet$Operation;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->add(Ljava/lang/String;II)V

    .line 1238
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->tempRegions:Ljava/util/Set;

    return-object p0
.end method
