.class Landroid/icu/text/NumberingSystem$LocaleLookupData;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleLookupData"
.end annotation


# instance fields
.field public final locale:Landroid/icu/util/ULocale;

.field public final numbersKeyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->locale:Landroid/icu/util/ULocale;

    .line 161
    iput-object p2, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    return-void
.end method
