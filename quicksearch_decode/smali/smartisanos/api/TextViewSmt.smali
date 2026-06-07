.class public Lsmartisanos/api/TextViewSmt;
.super Ljava/lang/Object;
.source "TextViewSmt.java"

.field private static final sInstance:Lsmartisanos/api/TextViewSmt;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/TextViewSmt;

    invoke-direct {v0}, Lsmartisanos/api/TextViewSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/TextViewSmt;->sInstance:Lsmartisanos/api/TextViewSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/TextViewSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/TextViewSmt;->sInstance:Lsmartisanos/api/TextViewSmt;

    return-object v0
.end method

.method public setHiddenContextMenuItem(Landroid/widget/TextView;I)V
    .locals 0

    return-void
.end method
