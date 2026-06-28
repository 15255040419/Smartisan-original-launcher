.class Lcom/android/settings/wifi/TrustedNetworkList$Multimap;
.super Ljava/lang/Object;
.source "TrustedNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/TrustedNetworkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final store:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkList;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/TrustedNetworkList;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->store:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/TrustedNetworkList;Lcom/android/settings/wifi/TrustedNetworkList$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;-><init>(Lcom/android/settings/wifi/TrustedNetworkList;)V

    return-void
.end method


# virtual methods
.method getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 442
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
