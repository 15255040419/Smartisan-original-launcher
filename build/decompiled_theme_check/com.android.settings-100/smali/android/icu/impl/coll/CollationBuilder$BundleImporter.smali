.class final Landroid/icu/impl/coll/CollationBuilder$BundleImporter;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Landroid/icu/impl/coll/CollationRuleParser$Importer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BundleImporter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroid/icu/impl/coll/CollationLoader;->loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
