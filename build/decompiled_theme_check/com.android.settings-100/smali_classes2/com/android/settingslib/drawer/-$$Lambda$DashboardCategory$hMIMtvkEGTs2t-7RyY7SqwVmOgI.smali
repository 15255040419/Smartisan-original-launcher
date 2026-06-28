.class public final synthetic Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/drawer/DashboardCategory;->lambda$sortTiles$0(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result p0

    return p0
.end method
