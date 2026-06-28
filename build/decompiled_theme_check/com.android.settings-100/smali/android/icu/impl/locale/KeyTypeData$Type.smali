.class Landroid/icu/impl/locale/KeyTypeData$Type;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Type"
.end annotation


# instance fields
.field bcpId:Ljava/lang/String;

.field legacyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    return-void
.end method
