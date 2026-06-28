.class abstract Landroid/icu/text/PluralRules$BinaryConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BinaryConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:Landroid/icu/text/PluralRules$Constraint;

.field protected final b:Landroid/icu/text/PluralRules$Constraint;


# direct methods
.method protected constructor <init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V
    .locals 0

    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p1, p0, Landroid/icu/text/PluralRules$BinaryConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    .line 1712
    iput-object p2, p0, Landroid/icu/text/PluralRules$BinaryConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    return-void
.end method
